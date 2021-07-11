.class public final Lcom/android/systemui/log/LogcatEchoTrackerDebugKt;
.super Ljava/lang/Object;
.source "LogcatEchoTrackerDebug.kt"


# static fields
.field private static final DEFAULT_LEVEL:Lcom/android/systemui/log/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    sput-object v0, Lcom/android/systemui/log/LogcatEchoTrackerDebugKt;->DEFAULT_LEVEL:Lcom/android/systemui/log/LogLevel;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_LEVEL$p()Lcom/android/systemui/log/LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogcatEchoTrackerDebugKt;->DEFAULT_LEVEL:Lcom/android/systemui/log/LogLevel;

    return-object v0
.end method
