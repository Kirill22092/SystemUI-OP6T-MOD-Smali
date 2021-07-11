.class Lcom/oneplus/battery/OpCBWarpChargingView$16;
.super Ljava/lang/Object;
.source "OpCBWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpCBWarpChargingView;->releaseAnimationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpCBWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$16;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$16;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$3002(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z

    .line 971
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$16;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p0, v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$3302(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z

    return-void
.end method
