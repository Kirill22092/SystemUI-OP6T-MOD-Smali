.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$vibrate$1;
.super Ljava/lang/Object;
.source "ControlActionCoordinatorImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->vibrate(Landroid/os/VibrationEffect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $effect:Landroid/os/VibrationEffect;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/os/VibrationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$vibrate$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$vibrate$1;->$effect:Landroid/os/VibrationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$vibrate$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$getVibrator$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$vibrate$1;->$effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method
