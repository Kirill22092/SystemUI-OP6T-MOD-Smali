.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$2LS2Q1aB3MxofHyV1vp1ZRFNvds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$2LS2Q1aB3MxofHyV1vp1ZRFNvds;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$2LS2Q1aB3MxofHyV1vp1ZRFNvds;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$2LS2Q1aB3MxofHyV1vp1ZRFNvds;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$2LS2Q1aB3MxofHyV1vp1ZRFNvds;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$removeNotification$14$StatusBarNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
