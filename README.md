# Exception Handling Example in Solidity

This Solidity contract demonstrates the use of `require()`, `assert()`, and `revert()` functions for exception handling within Ethereum smart contracts.

## Contract Overview

The `ExceptionHandlingExample` contract contains three functions:

1. **requireExample(uint _num)**
   - Uses `require()` to validate that the input `_num` is not zero.
   - If `_num` is zero, the function reverts the transaction with the error message "Number cannot be zero".
   - If `_num` is non-zero, it assigns `_num` to the state variable `num`.

2. **assertExample(uint _num)**
   - Demonstrates the use of `assert()` to validate an internal condition.
   - Computes the product of the stored value `num` and `_num` and asserts that the result is always greater than or equal to `num`.
   - This function is pure and does not modify the contract state.

3. **revertExample(uint _num)**
   - Uses `revert()` to revert the transaction if `_num` is zero.
   - If `_num` equals zero, the function reverts with the error message "Number cannot be zero".
   - Otherwise, it returns `_num`.

## Usage

To interact with this contract:

1. Deploy the `ExceptionHandlingExample` contract on a supported Ethereum development environment or testnet.
2. Use a tool like Remix IDE, Hardhat, or Truffle to compile and deploy the contract.
3. Call the functions `requireExample`, `assertExample`, and `revertExample` with appropriate arguments to observe their behavior.

## Example Transactions

### requireExample Example

```solidity
contract.requireExample(5);
// This will succeed and set `num` to 5.

contract.requireExample(0);
// This will fail and revert the transaction with the error message "Number cannot be zero".
```

### assertExample Example

```solidity
contract.assertExample(3);
// This will compute the result and return it.

contract.assertExample(0);
// This will revert the call because the assertion will fail (result >= num).
```

### revertExample Example

```solidity
contract.revertExample(7);
// This will return 7 because `_num` is non-zero.

contract.revertExample(0);
// This will revert the transaction with the error message "Number cannot be zero".
```

## Notes

- **require()**: Used to validate inputs and conditions that should never fail under normal circumstances.
- **assert()**: Used to check for internal errors and enforce conditions that should always be true.
- **revert()**: Used to revert the transaction execution due to invalid inputs or exceptional conditions.

These functions demonstrate best practices for handling exceptions and ensuring robustness in Ethereum smart contract development.

---

**Author**
------

[Sanjay Kumar Thakur](https://github.com/snjy-kumar)