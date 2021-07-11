.class Lcom/oneplus/battery/OpSWarpChargingView$13$2;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView$13;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView$13;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$2;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 782
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$2;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    iget-object v1, v0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1100(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$2;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    iget-object v0, v0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    .line 783
    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1900(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$2;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    .line 784
    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2100(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 782
    invoke-static/range {v1 .. v6}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1700(Lcom/oneplus/battery/OpSWarpChargingView;IIIZZ)V

    return-void
.end method
