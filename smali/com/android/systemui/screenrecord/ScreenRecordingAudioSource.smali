.class public final enum Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
.super Ljava/lang/Enum;
.source "ScreenRecordingAudioSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 24
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const-string v1, "INTERNAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 25
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const-string v1, "MIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 26
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const-string v1, "MIC_AND_INTERNAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 22
    sget-object v6, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->$VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
    .locals 1

    .line 22
    const-class v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->$VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {v0}, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-object v0
.end method
