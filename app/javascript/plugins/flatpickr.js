import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  "disable": [
        function(date) {
            // return true to disable
            return (date.getDay() === 0 || date.getDay() === 6);
        }
    ],
  "locale": {
      "firstDayOfWeek": 1 // start week on Monday
  },
  minDate: "today"
});
