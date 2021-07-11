.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelBack()V
    .locals 7

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1600(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/android/systemui/recents/OverviewProxyService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    .line 367
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v4, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result p0

    xor-int/lit8 v6, p0, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 366
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    return-void
.end method

.method public triggerBack()V
    .locals 8

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;II)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;II)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/android/systemui/recents/OverviewProxyService;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v4, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    .line 357
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v5, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 356
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    .line 358
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1600(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)V

    return-void
.end method
