.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$FvWiyXhpHqM8g_4pJO-S1w2v23M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$FvWiyXhpHqM8g_4pJO-S1w2v23M;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$FvWiyXhpHqM8g_4pJO-S1w2v23M;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$FvWiyXhpHqM8g_4pJO-S1w2v23M;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$FvWiyXhpHqM8g_4pJO-S1w2v23M;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$FvWiyXhpHqM8g_4pJO-S1w2v23M;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationContentInflater$FvWiyXhpHqM8g_4pJO-S1w2v23M;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->lambda$freeNotificationView$1$NotificationContentInflater(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
