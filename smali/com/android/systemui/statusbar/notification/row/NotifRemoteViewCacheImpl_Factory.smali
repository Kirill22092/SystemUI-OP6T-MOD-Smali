.class public final Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;
.super Ljava/lang/Object;
.source "NotifRemoteViewCacheImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final collectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;->collectionProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;->collectionProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;->get()Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    move-result-object p0

    return-object p0
.end method
