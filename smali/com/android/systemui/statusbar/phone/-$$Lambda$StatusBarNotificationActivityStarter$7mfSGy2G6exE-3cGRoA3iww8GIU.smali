.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/RemoteInputController;

.field public final synthetic f$4:Landroid/app/PendingIntent;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$1:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$3:Lcom/android/systemui/statusbar/RemoteInputController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$4:Landroid/app/PendingIntent;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$5:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$6:Z

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$7:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$1:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$3:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$4:Landroid/app/PendingIntent;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$5:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$6:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;->f$7:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$handleNotificationClickAfterKeyguardDismissed$1$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
