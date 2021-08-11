.class Lcom/oneplus/battery/OpCBWarpChargingView$3$1;
.super Ljava/lang/Object;
.source "OpCBWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpCBWarpChargingView$3;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/battery/OpCBWarpChargingView$3;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpCBWarpChargingView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3$1;->this$1:Lcom/oneplus/battery/OpCBWarpChargingView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3$1;->this$1:Lcom/oneplus/battery/OpCBWarpChargingView$3;

    iget-object v1, v0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$500(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3$1;->this$1:Lcom/oneplus/battery/OpCBWarpChargingView$3;

    iget-object v0, v0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$600(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result v3

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3$1;->this$1:Lcom/oneplus/battery/OpCBWarpChargingView$3;

    iget-object v0, v0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$700(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$800(Lcom/oneplus/battery/OpCBWarpChargingView;IIIZZ)V

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3$1;->this$1:Lcom/oneplus/battery/OpCBWarpChargingView$3;

    iget-object v1, v0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$900(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3$1;->this$1:Lcom/oneplus/battery/OpCBWarpChargingView$3;

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$500(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    sub-int v3, v0, p0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$800(Lcom/oneplus/battery/OpCBWarpChargingView;IIIZZ)V

    return-void
.end method
