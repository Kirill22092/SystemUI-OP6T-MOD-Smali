.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotifCollection$PS-T32cqW5H2Es1H0TkJN19WLA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotifCollection$PS-T32cqW5H2Es1H0TkJN19WLA8;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-void
.end method


# virtual methods
.method public final onEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotifCollection$PS-T32cqW5H2Es1H0TkJN19WLA8;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->lambda$PS-T32cqW5H2Es1H0TkJN19WLA8(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
