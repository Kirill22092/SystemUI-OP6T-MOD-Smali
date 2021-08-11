.class public Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
.super Ljava/lang/Object;
.source "DismissedByUserStats.java"


# instance fields
.field public final dismissalSentiment:I

.field public final dismissalSurface:I

.field public final notificationVisibility:Lcom/android/internal/statusbar/NotificationVisibility;


# direct methods
.method public constructor <init>(IILcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->dismissalSurface:I

    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->dismissalSentiment:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->notificationVisibility:Lcom/android/internal/statusbar/NotificationVisibility;

    return-void
.end method
