const r4os = @import("r4os");

comptime {
    if (!@import("builtin").is_test) asm (r4os.technical2.driverEntriesAsm("audio_fail_init", "audio_fail_shutdown"));
}

export fn audio_fail_init(api: *const r4os.abi.DriverApi2) callconv(.c) i32 {
    var ctx = r4os.r4dev.DriverContext2.init(api);
    if (!ctx.requires(.{})) return -10;
    ctx.logError("AC97FAIL.R4D deliberate init failure");
    return -38;
}

export fn audio_fail_shutdown() callconv(.c) i32 {
    return 0;
}
