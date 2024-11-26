// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Students {
    struct Student {
        string name;
        uint8 grade;
        bool pass;
    }

    Student[] public stu;

    function set(
        string calldata _name,
        uint8 _grade,
        bool _pass
    ) public {
        /* 顺序传 */
        // stu.push(Student(_name, _grade, _pass));
        /* 可无序 */
        // stu.push(Student({grade: _grade, name: _name, pass: _pass}));
        /* 变量传 */
        Student memory myStu;
        myStu.name = _name;
        myStu.grade = _grade;
        myStu.pass = _pass;
        stu.push(myStu);
    }
}
