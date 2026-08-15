const r4os = @import("r4os");

comptime {
    asm (r4os.r4dev.driverEntriesAsm("audio_fail_init", "audio_fail_shutdown"));
}

export fn audio_fail_init(api: *const r4os.r4dev.DriverApi) callconv(.c) i32 {
    var ctx = r4os.r4dev.DriverContext.init(api);
    ctx.logError("AC97FAIL.R4D deliberate init failure");
    return -38;
}

export fn audio_fail_shutdown() callconv(.c) i32 {
    return 0;
}
