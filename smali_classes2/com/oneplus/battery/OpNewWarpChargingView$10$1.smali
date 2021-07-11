.class Lcom/oneplus/battery/OpNewWarpChargingView$10$1;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpNewWarpChargingView$10;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/battery/OpNewWarpChargingView$10;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView$10;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10$1;->this$1:Lcom/oneplus/battery/OpNewWarpChargingView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 643
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10$1;->this$1:Lcom/oneplus/battery/OpNewWarpChargingView$10;

    iget-object v1, v0, Lcom/oneplus/battery/OpNewWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1400(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10$1;->this$1:Lcom/oneplus/battery/OpNewWarpChargingView$10;

    iget-object v0, v0, Lcom/oneplus/battery/OpNewWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 644
    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1600(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10$1;->this$1:Lcom/oneplus/battery/OpNewWarpChargingView$10;

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 645
    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1700(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 643
    invoke-static/range {v1 .. v6}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1800(Lcom/oneplus/battery/OpNewWarpChargingView;IIIZZ)V

    return-void
.end method
