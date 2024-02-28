function calculateOTPayment(hourlyIncome, day, time, otHours) {
    let otRate = 1; // Default OT rate

    // Check if it's a weekday (จันทร์ - ศุกร์)
    if (day >= 1 && day <= 5) {
        if ((time >= 18 && time < 21) || (time >= 21 && time < 24)) {
            otRate = 1.5;
        }
    }

    // Check if it's a weekend (เสาร์ - อาทิตย์)
    if (day === 6 || day === 0) {
        if ((time >= 9 && time < 18) || (time >= 21 && time < 24)) {
            otRate = 1.5;
        }
    }

    // Check for the higher OT rate if applicable
    if ((day >= 1 && day <= 5) && time >= 21 && time < 24) {
        otRate = 3;
    }

    if ((day === 6 || day === 0) && time >= 21 && time < 24) {
        otRate = 3;
    }

    // Assuming overtime hours are fixed at 1 hour for the example
    const overtimeHours = otHours;

    // Calculate OT payment
    const otPayment = hourlyIncome * otRate * overtimeHours;

    return otPayment;
}

// Example usage
const hourlyIncome = 100; // รายได้ต่อชั่วโมง
const dayOfWeek = 3; // 1 = จันทร์, 2 = อังคาร, ..., 7 = อาทิตย์
const timeOfWork = 22; // 24-hour format
const otHours = 1;

const otPayment = calculateOTPayment(hourlyIncome, dayOfWeek, timeOfWork, otHours);
console.log(`OT Payment: ${otPayment} บาท`);






// นาย A
const hourlyIncomeA = 100;
const dayOfWeekA1 = 1; // จันทร์
const timeOfWorkA1 = 18; // 18.00-19.00
const timeOfWorkA2 = 21; // 21.00-22.00
const otHours1 = 1;
const otHours2 = 1;

const otPaymentA1 = calculateOTPayment(hourlyIncomeA, dayOfWeekA1, timeOfWorkA1, otHours1);
const otPaymentA2 = calculateOTPayment(hourlyIncomeA, dayOfWeekA1, timeOfWorkA2, otHours2);

const totalOTPaymentA = otPaymentA1 + otPaymentA2;

console.log("นาย A");
console.log(`รายได้พนักงานต่อชั่วโมง: ${hourlyIncomeA} บาท`);
console.log(`วัน OT 1: จันทร์ 18.00-19.00 - จำนวนชั่วโมง OT: 1 - OT: ${otPaymentA1} บาท`);
console.log(`วัน OT 2: จันทร์ 21.00-22.00 - จำนวนชั่วโมง OT: 1 - OT: ${otPaymentA2} บาท`);
console.log(`OT ที่ต้องจ่าย: ${totalOTPaymentA} บาท`);

// นาย B
const hourlyIncomeB = 150;
const dayOfWeekB = 1; // จันทร์
const timeOfWorkB1 = 19; // 19.00-20.00
const timeOfWorkB2 = 21; // 21.00-22.00
const otHoursB1 = 2;

const otPaymentB1 = calculateOTPayment(hourlyIncomeB, dayOfWeekB, timeOfWorkB1, otHoursB1);
// const otPaymentB2 = calculateOTPayment(hourlyIncomeB, dayOfWeekB, timeOfWorkB2);

const totalOTPaymentB = otPaymentB1;
// const totalOTPaymentB = otPaymentB1 + otPaymentB2;

console.log("\nนาย B");
console.log(`รายได้พนักงานต่อชั่วโมง: ${hourlyIncomeB} บาท`);
console.log(`วัน OT 1: จันทร์ 19.00-20.00 - จำนวนชั่วโมง OT: 2 - OT: ${otPaymentB1} บาท`);
// console.log(`วัน OT 2: จันทร์ 21.00-22.00 - จำนวนชั่วโมง OT: 1 - OT: ${otPaymentB2} บาท`);
console.log(`OT ที่ต้องจ่าย: ${totalOTPaymentB} บาท`);
