.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotifCollection$rJA7gnYxObrhTLCPUOVCEcGObt0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotifCollection$rJA7gnYxObrhTLCPUOVCEcGObt0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-void
.end method


# virtual methods
.method public final onEndDismissInterception(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotifCollection$rJA7gnYxObrhTLCPUOVCEcGObt0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->lambda$rJA7gnYxObrhTLCPUOVCEcGObt0(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    return-void
.end method
