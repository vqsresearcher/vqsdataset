# Train / test splits

Official VQS evaluation uses fixed train and test sequence lists (one `video_id` per line).

- **Test list:** use `test_t-IoU.txt` when computing benchmark metrics.
- **Train list:** `train_t-IoU.txt` is for training only; do not evaluate on it.

Obtain the official split files from the [VQS dataset repository](https://github.com/vqsresearcher/vqsdataset).

Always report which split file, GT mask folder, and prediction folder were used when comparing to published numbers.
