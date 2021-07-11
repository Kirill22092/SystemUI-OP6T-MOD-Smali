.class public final Lcom/android/systemui/qs/tiles/NfcTile_Factory;
.super Ljava/lang/Object;
.source "NfcTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/tiles/NfcTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NfcTile_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/android/systemui/qs/tiles/NfcTile_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NfcTile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/android/systemui/qs/tiles/NfcTile;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/tiles/NfcTile;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->hostProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NfcTile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->get()Lcom/android/systemui/qs/tiles/NfcTile;

    move-result-object p0

    return-object p0
.end method
