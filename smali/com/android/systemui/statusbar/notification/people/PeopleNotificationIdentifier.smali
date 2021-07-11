.class public interface abstract Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;
.super Ljava/lang/Object;
.source "PeopleNotificationIdentifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier$Companion;

    return-void
.end method


# virtual methods
.method public abstract compareTo(II)I
.end method

.method public abstract getPeopleNotificationType(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)I
    .param p1    # Landroid/service/notification/StatusBarNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/notification/NotificationListenerService$Ranking;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
