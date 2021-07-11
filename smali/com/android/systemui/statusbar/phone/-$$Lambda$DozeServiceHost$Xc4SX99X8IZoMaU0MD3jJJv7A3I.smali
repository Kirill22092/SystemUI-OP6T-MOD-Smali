.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$DozeServiceHost$Xc4SX99X8IZoMaU0MD3jJJv7A3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DozeServiceHost$Xc4SX99X8IZoMaU0MD3jJJv7A3I;->f$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DozeServiceHost$Xc4SX99X8IZoMaU0MD3jJJv7A3I;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DozeServiceHost$Xc4SX99X8IZoMaU0MD3jJJv7A3I;->f$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DozeServiceHost$Xc4SX99X8IZoMaU0MD3jJJv7A3I;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->lambda$fireNotificationPulse$0$DozeServiceHost(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
