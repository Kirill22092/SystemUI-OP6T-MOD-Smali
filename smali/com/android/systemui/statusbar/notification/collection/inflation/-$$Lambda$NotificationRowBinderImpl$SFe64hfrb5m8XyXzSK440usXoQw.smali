.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowInflationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;->f$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;->f$3:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    return-void
.end method


# virtual methods
.method public final onInflationFinished(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;->f$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;->f$2:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;->f$3:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->lambda$inflateViews$0$NotificationRowBinderImpl(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method
