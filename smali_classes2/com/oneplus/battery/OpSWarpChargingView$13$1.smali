.class Lcom/oneplus/battery/OpSWarpChargingView$13$1;
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

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    iget-object v1, v0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    iget-object v2, v2, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v2}, Lcom/oneplus/battery/OpSWarpChargingView;->access$200(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    iget-object v0, v0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1600(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$13;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$200(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1700(Lcom/oneplus/battery/OpSWarpChargingView;IIIZZ)V

    return-void
.end method
