.class Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;
.super Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;
.source "NotificationContentInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->apply(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)Landroid/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoteView()Landroid/widget/RemoteViews;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1002(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
