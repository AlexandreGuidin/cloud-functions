import {someNumber} from "./utils/test";

export const index = (req, res) => {
    res.json({someNumber: someNumber()})
};
