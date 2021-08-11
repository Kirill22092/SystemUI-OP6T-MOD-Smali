.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickSwitchToNewTask(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$402(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    return-void
.end method
