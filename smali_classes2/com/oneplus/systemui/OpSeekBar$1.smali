.class Lcom/oneplus/systemui/OpSeekBar$1;
.super Landroid/os/Handler;
.source "OpSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/OpSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/OpSeekBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/OpSeekBar;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/OpSeekBar$1;->this$0:Lcom/oneplus/systemui/OpSeekBar;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " doSeekBarVibrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSeekBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/common/SeekBarVibratorHelper;->getInstance()Lcom/oneplus/common/SeekBarVibratorHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/OpSeekBar$1;->this$0:Lcom/oneplus/systemui/OpSeekBar;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/common/SeekBarVibratorHelper;->doSeekBarVibrate(Landroid/widget/SeekBar;I)V

    :goto_0
    return-void
.end method
