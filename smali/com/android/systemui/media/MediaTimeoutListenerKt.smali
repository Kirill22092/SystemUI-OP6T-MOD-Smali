.class public final Lcom/android/systemui/media/MediaTimeoutListenerKt;
.super Ljava/lang/Object;
.source "MediaTimeoutListener.kt"


# static fields
.field private static final PAUSED_MEDIA_TIMEOUT:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string v2, "debug.sysui.media_timeout"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/media/MediaTimeoutListenerKt;->PAUSED_MEDIA_TIMEOUT:J

    return-void
.end method

.method public static final synthetic access$getPAUSED_MEDIA_TIMEOUT$p()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/media/MediaTimeoutListenerKt;->PAUSED_MEDIA_TIMEOUT:J

    return-wide v0
.end method
