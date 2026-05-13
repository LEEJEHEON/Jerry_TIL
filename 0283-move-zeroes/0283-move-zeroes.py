class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        flag= 0
        for n in range(len(nums)) :
            if nums[flag] == 0 :
                nums.append(nums.pop(flag))
            else :
                flag += 1