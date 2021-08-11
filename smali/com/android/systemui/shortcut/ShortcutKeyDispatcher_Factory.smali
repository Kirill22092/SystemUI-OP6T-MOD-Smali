.class public final Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;
.super Ljava/lang/Object;
.source "ShortcutKeyDispatcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dividerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;"
        }
    .end annotation
.end field

.field private final recentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->dividerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->recentsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;)",
            "Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;)",
            "Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/recents/Recents;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;-><init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/recents/Recents;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->dividerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->recentsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->get()Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    move-result-object p0

    return-object p0
.end method
