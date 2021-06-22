<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Laravel\Socialite\Facades\Socialite;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return array|false|string[]
     */
    public function index()
    {
        $data = DB::table('tanks')->select('tanks.*', 'tank_refueling.currentTankGallons')
            ->join('tank_refueling', 'tank_refueling.tank_id', '=', 'tanks.id')->get()->toArray();
        return $this->calculate_dd_multiplier($data[0]);
    }

    // CORRECT FUNCTION FOR GET DEGREE DAYS VIA URL
    public function get_degree_days($region_code)
    {
        $removeSkip = false;
        $file = "ftp://ftp.cpc.ncep.noaa.gov/htdocs/degree_days/weighted/daily_data/latest/ClimateDivisions.Heating.txt";
        if (file_exists($region_code . 'ClimateDivisions.Heating.txt')) {
            if (date("d-m-Y", filemtime($region_code . 'ClimateDivisions.Heating.txt')) === date('d-m-Y')) {
                if (filesize($region_code . 'ClimateDivisions.Heating.txt') == 0) {
                    $removeSkip = false;
                } else {
                    $file = $region_code . 'ClimateDivisions.Heating.txt';
                    $removeSkip = true;
                }
            } else {
                unlink($region_code . 'ClimateDivisions.Heating.txt');
                $removeSkip = false;
            }
        }
        $degree_days = [];
        $file = file_get_contents($file);
        $lines = explode("\n", $file);
        if (!$removeSkip) {
            $lines = array_slice($lines, 4);
        }
        foreach ($lines as $item) {
            $line_arr = explode('|', $item);
            if ($line_arr[0] == $region_code) {
                $degree_days = $line_arr;
                break;
            }
        }
        if (!$removeSkip) {
            $handle = fopen($region_code . 'ClimateDivisions.Heating.txt', 'w');
            fwrite($handle, implode("\n", $lines));
            fclose($handle);
        }
        return $degree_days;
    }

    public function get_state_code($state)
    {
        if ($state == 'AL') {       // 1 alabama
            $state_code = 1;

        } else if ($state == 'AZ') { // 2 arizona
            $state_code = 2;

        } else if ($state == 'AR') { // 3 arkansas
            $state_code = 3;

        } else if ($state == 'CA') { // 4 california
            $state_code = 4;

        } else if ($state == 'CO') { // 5 colorado
            $state_code = 5;

        } else if ($state == 'CT') { // 6 connecticut
            $state_code = 6;

        } else if ($state == 'DE') { // 7 delaware
            $state_code = 7;

        } else if ($state == 'FL') { // 8 florida
            $state_code = 8;

        } else if ($state == 'GA') { // 9 georgia
            $state_code = 9;

        } else if ($state == 'ID') { // 10 idaho
            $state_code = 10;

        } else if ($state == 'IL') { // 11 illinois
            $state_code = 11;

        } else if ($state == 'IN') { // 12 indiana
            $state_code = 12;

        } else if ($state == 'IA') { // 13 iowa
            $state_code = 13;

        } else if ($state == 'KS') { // 14 kansas
            $state_code = 14;

        } else if ($state == 'KY') { // 15 kentucky
            $state_code = 15;

        } else if ($state == 'LA') { // 16 louisiana
            $state_code = 16;

        } else if ($state == 'ME') { // 17 maine
            $state_code = 17;

        } else if ($state == 'MD') { // 18 maryland
            $state_code = 18;

        } else if ($state == 'MA') { // 19 massachusetts
            $state_code = 19;

        } else if ($state == 'MI') { // 20 michigan
            $state_code = 20;

        } else if ($state == 'MN') { // 21 minnesota
            $state_code = 21;

        } else if ($state == 'MS') { // 22 mississippi
            $state_code = 22;

        } else if ($state == 'MO') { // 23 missouri
            $state_code = 23;

        } else if ($state == 'MT') { // 24 montana
            $state_code = 24;

        } else if ($state == 'NE') { // 25 nebraska
            $state_code = 25;

        } else if ($state == 'NV') { // 26 nevada
            $state_code = 26;

        } else if ($state == 'NH') { // 27 new_hampshire
            $state_code = 27;

        } else if ($state == 'NJ') { // 28 new_jersey
            $state_code = 28;

        } else if ($state == 'NM') { // 29 new_mexico
            $state_code = 29;

        } else if ($state == 'NY') { // 30 new_york
            $state_code = 30;

        } else if ($state == 'NC') { // 31 north_carolina
            $state_code = 31;

        } else if ($state == 'ND') { // 32 north_dakota
            $state_code = 32;

        } else if ($state == 'OH') { // 33 ohio
            $state_code = 33;

        } else if ($state == 'OK') { // 34 oklahoma
            $state_code = 34;

        } else if ($state == 'OR') { // 35 oregon
            $state_code = 35;

        } else if ($state == 'PA') { // 36 pennsylvania
            $state_code = 36;

        } else if ($state == 'RI') { // 37 rhode_island
            $state_code = 37;

        } else if ($state == 'SC') { // 38 south_carolina
            $state_code = 38;

        } else if ($state == 'SD') { // 39 south_dakota
            $state_code = 39;

        } else if ($state == 'TN') { // 40 tennessee
            $state_code = 40;

        } else if ($state == 'TX') { // 41 texas
            $state_code = 41;

        } else if ($state == 'UT') { // 42 utah
            $state_code = 42;

        } else if ($state == 'VT') { // 43 vermont
            $state_code = 43;

        } else if ($state == 'VA') { // 44 virginia
            $state_code = 44;

        } else if ($state == 'WA') { // 45 washington
            $state_code = 45;

        } else if ($state == 'WV') { // 46 west_virginia
            $state_code = 46;

        } else if ($state == 'WI') { // 47 wisconsin
            $state_code = 47;

        } else if ($state == 'Wy') { // 48 wyoming
            $state_code = 48;

        } else {
            $state_code = 0;
        }
        return $state_code;
    }

    public function divide_dd_in_month($degreeDays)
    {
        $monthly_dd = [];
        $year = date('Y');
        $totalMonthlyDays = date('z');

        for ($d = 1; $d <= $totalMonthlyDays; $d++) {

            for ($m = 1; $m <= 12; $m++) {

                $daysInMonth = cal_days_in_month(CAL_GREGORIAN, $m, $year);

                for ($i = 1; $i <= $daysInMonth; $i++) {

                    if (isset($degreeDays[$d])) {

                        $monthly_dd[$m]['month'][$i] = $degreeDays[$d];
                        $monthly_dd[$m]['index'][$i] = $d;

                    }
                    $d++;
                }
            }
        }
        return $monthly_dd;
    }

    public function calculate_dd_multiplier($data)
    {
//        $usage_gallon = $data['usage_gallon'];
//        $last_update_date = $data['last_update_date'];
//        $current_update_date = $data['current_update_date'];
//        $correct_tank = $data['correct_tank'] ?? '';
//
        $state = 'AL'; // $data['state'];
        $city_code = '01'; // $data['city_code'];
        $state_code = $this->get_state_code($state);
        $fileName = $state_code . $city_code;

        // LIVE / TEST FUNCTION FOR FETCH DEGREE DAYS
        $degreeDays = $this->get_degree_days($fileName); // GET DEGREE DAYS VIA FTP

        if (isset($degreeDays['error_message'])) {
            return $degreeDays;
        }

        if (count($degreeDays) <= 0) {
            return ['error_message' => "Error, Could not fetch degree days file from server."];
        }

        // DIVIDE DEGREE DAYS IN MONTH
        $monthly_dd = $this->divide_dd_in_month($degreeDays);

//        dd($monthly_dd);

//        $prev_month = date('d-m-Y', strtotime('first day of last month'));
        $prev_month = '01-05-2021';
        $next_month = '01-06-2021';

        echo "<b>dates used for the calculation</b><br>";
        echo "previous date --- $prev_month<br>";
        echo "current date --- $next_month<br>";
        echo 'current day --- ' . date('d') . '<br><br>';

        $total_last_month_days = cal_days_in_month(CAL_GREGORIAN, date('m', strtotime($prev_month)), date('Y', strtotime($prev_month)));

        $total_current_month_days = cal_days_in_month(CAL_GREGORIAN, date('m'), date('Y'));

        // Prev Month Gallons
        $prev_monthGallons = DB::table('tank_refueling')->where('tank_id', $data->id)->orderBy('id')
            ->whereMonth('currentDate', '=', date('m', strtotime($prev_month)))->limit(1)->first();

        // Per Day Gallons
        $perDayGallons = 0;
        if ($prev_monthGallons) {
//            $perDayGallons = ($data->currentTankGallons - $prev_monthGallons->currentTankGallons) / $total_last_month_days;
            $perDayGallons = (($data->sizeOfTanks * $prev_monthGallons->previousTankPer) / 100) + $prev_monthGallons->delieveredGallons;
            $perDayGallons = round($perDayGallons / $total_last_month_days, 2);
        }

        echo "<pre>";

        echo "tank capacity --- $data->sizeOfTanks <br><br>";

        echo "previous month gallons --- $prev_monthGallons->currentTankGallons <br><br>";

        echo "per day gallons for previous month --- $perDayGallons <br>";
        echo "calculation <br> ($data->sizeOfTanks (size of tank) * $prev_monthGallons->previousTankPer (previous month tank percentage) ) / 100 +  $prev_monthGallons->delieveredGallons (Previous month gallons)  and then rouding value to 2 precision  <br><br>";


        // Average Degree Day
        $degreeDaysCount = 0;
        foreach ($monthly_dd[(int)date('m', strtotime($prev_month))]['index'] as $monthly_data) {
            $degreeDaysCount += $monthly_data;
        }
        echo "degree days count prev month --- $degreeDaysCount  (Obtained from NOAA) <br><br>";

        $degreeDaysCountNext = 0;
        foreach ($monthly_dd[(int)date('m', strtotime($next_month))]['index'] as $index) {
            $degreeDaysCountNext += $index;
        }
        echo "degree days count current month --- $degreeDaysCountNext (Obtained from NOAA) <br><br>";


        // degree day multiplier
//        $previous_usage = ($data->sizeOfTanks * $prev_monthGallons->previousTankPer) / 100;
//        $dd_multiplier = $degreeDaysCount / ($prev_monthGallons->delieveredGallons + $previous_usage);
//
//        echo 'dd multiplier ' . $dd_multiplier . '<br>';

        $nextMonthFirstEntry = $monthly_dd[(int)date('m', strtotime($next_month))]['index'][1];
        $temp = $degreeDaysCount - $nextMonthFirstEntry;
        echo "previous month total degree day count ($degreeDaysCount) - first day`s degree day count ($nextMonthFirstEntry)  = $temp <br><br>";
        $degreeDaysCount = $temp;

        $average_daily_degree_day = $degreeDaysCount / $total_last_month_days;
        echo "average degree days count --- $average_daily_degree_day <br>";
        echo "calculation <br>  $degreeDaysCount (Previous month Degree day count) / $total_last_month_days (Total days of last month) <br><br>";


        // Degree day point Fixed and save to db 0.xxxx
        $degree_day_point = round($perDayGallons / $average_daily_degree_day, 4);
        echo "degree day point --- $degree_day_point <br>";
        echo "calculation  <br> $perDayGallons (Per day gallons) / $average_daily_degree_day (average daily degree day) and rouding to 4 precision <br><br>";

        echo "previous month usage should be ($degree_day_point * $degreeDaysCount) = " . ($degree_day_point * $degreeDaysCount) . "<br><br>";

        $usedTankGallons = ($degree_day_point * $degreeDaysCountNext);
        echo "current month tank gallon usage ---  $usedTankGallons <br>";
        echo "calculation  <br>  $degree_day_point (degree day point) * $degreeDaysCountNext (current month degree days count) <br><br>";

        $dailyUsage = round($usedTankGallons / $total_current_month_days, 2);
        echo "daily fuel usage --- $dailyUsage  <br>";
        echo "calculation  <br> $usedTankGallons (used tank gallons calculated above) / $total_current_month_days (total days of current month) and rouding to 2 precision  <br><br>";

        $usage_this_month = round($dailyUsage * date('d'));
        echo "usage this month --- $usage_this_month <br>";
        echo "calculation <br> $dailyUsage (daily fuel usage) * " . date('d') . " (today's date) and rouding to full numbner  <br><br>";

        $remaining_per = round((($usedTankGallons - $usage_this_month) * 100) / $usedTankGallons);
        echo "remaining percentage --- $remaining_per <br>";
        echo "calculation <br> ($usedTankGallons (used tank gallons calculated above) - $usage_this_month (usage this month) * 100) / $usedTankGallons (used tank gallons) <br><br>";

        dd($monthly_dd);
        exit();
        // total 100
        // use    ?

//        $start_day = date('d', strtotime($prev_monthGallons->currentDate));
//        $end_day = date('d', strtotime($data->currentDate));
//
//        $start_month = date('m', strtotime($prev_monthGallons->currentDate));
//        $end_month = date('m', strtotime($data->currentDate));
//
//        $start_year = date('Y', strtotime($prev_monthGallons->currentDate));
//        $end_year = date('Y', strtotime($data->currentDate));
//
//        if ($start_year != $end_year) {
//            $start_day = '01';
//            $start_month = '01';
//        }

        // GET START AND END DEGREE DAYS INDEX NO
//        $from_dd = $monthly_dd[(int)$start_month]['index'][(int)$start_day] ?? 0;
//        $to_dd = $monthly_dd[(int)$end_month]['index'][(int)$end_day] ?? 0;

//        if (!$from_dd) {
//            return ['error_message' => "Error, Incorrect degree days from NOOA Api"];
//        }

        // if to_dd 0 then will take last updated dd
//        if (!$to_dd) {
//            $to_dd_arr = $monthly_dd[(int)$end_month]['index'] ?? [];
//            if (count($to_dd_arr) > 0) {
//                $to_dd = end($monthly_dd[(int)$end_month]['index']);
//            } else {
//                $to_dd = end($monthly_dd[(int)$start_month]['index']);
//            }
//        }


//        if ($correct_tank) {
//            $degree_day_multiplier = $degreeDaysCount / $usage_gallon;
//        } else {
//
//            if (!$daysCount) {
//                return [
//                    'error_message' => "Incorrect Date, Update gallon date must be greater than last update date. Last update date was : $last_update_date",
//                ];
//            }
//
//            // PER DAY USAGE
//            if ($usage_gallon) {
//                $per_day_usage = $usage_gallon / $daysCount;
//            } else {
//                $per_day_usage = 0;
//            }
//
//            //PER DAY DEGREE DAYS
//            $per_day_dd = $degreeDaysCount / $daysCount;
//
//            if ($per_day_dd) {
//                $degree_day_multiplier = $per_day_usage / $per_day_dd;
//            } else {
//                // DEFAULT DDM
//                $degree_day_multiplier = 0.210;
//            }
//        }


        // RETURN DDM AND USAGE PER DAY
//        return [
////            'error_message' => $error_message,
////            'degree_day_multiplier' => number_format($degree_day_multiplier, 3),
//            'degree_days_count' => $degreeDaysCount
//        ];
    }

    public function googleToken(Request $request)
    {
//        $user = Socialite::driver('google')->getAccessTokenResponse($request->token);
        $user = Socialite::driver('google')->userFromToken($request->token);

        dd($user);
    }
}
