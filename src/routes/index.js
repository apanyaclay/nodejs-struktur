const express = require("express");
const router = express.Router();
const v1 = require('./v1')

router.get('/', (req, res) => {
    res.status(200).json({
        message: 'Server is running'
    });
});

router.use('/api/v1', v1);

export default router;