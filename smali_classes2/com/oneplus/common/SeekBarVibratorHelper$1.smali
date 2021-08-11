.class Lcom/oneplus/common/SeekBarVibratorHelper$1;
.super Ljava/lang/Object;
.source "SeekBarVibratorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/common/SeekBarVibratorHelper;->doSeekBarVibrate(Landroid/widget/SeekBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/common/SeekBarVibratorHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object p0

    sget-object v0, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT3:Lcom/appaac/haptic/HapticEffect$Effect;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/appaac/haptic/AACHapticUtils;->playExtPrebaked(Lcom/appaac/haptic/HapticEffect$Effect;I)V

    return-void
.end method
