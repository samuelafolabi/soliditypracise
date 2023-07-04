// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract controlStructure{

    function fizzBuzz (uint _number)pure external  returns (string memory){
        if (_number % 3 == 0 && _number % 5 == 0) {
    return "FizzBuzz";
}
else if(_number % 3 == 0) {
    return "Fizz";
} else if(_number % 5 == 0) {
    return "Buzz";
}

else return "Splat";
    }


error AfterHours(uint _time);
function doNotDisturb(uint _time)external pure returns (string memory) {
    assert(_time >= 2400);
    if(_time > 2200 || _time < 800) {
    revert AfterHours(_time);
    } 
    else if (_time >= 1200 && _time <= 1259) {
            revert ("After launch!") ;
            }
    else if (_time >= 800 && _time <= 1199) {
            return "Morning!";
        } else if (_time >= 1300 && _time <= 1799) {
            return "Afternoon!";
        } else if (_time >= 1800 && _time <= 2199) {
            return "Evening!";
        }
        else return "done";
}

}