.class public Lcom/android/systemui/SystemUIAppComponentFactory;
.super Landroidx/core/app/AppComponentFactory;
.source "SystemUIAppComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;,
        Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;
    }
.end annotation


# instance fields
.field public mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/AppComponentFactory;-><init>()V

    return-void
.end method

.method private synthetic lambda$instantiateApplicationCompat$0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    return-void
.end method

.method static synthetic lambda$instantiateProviderCompat$1(Landroid/content/ContentProvider;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->inject(Landroid/content/ContentProvider;)V

    return-void
.end method


# virtual methods
.method public instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-interface {v0, p2}, Lcom/android/systemui/dagger/ContextComponentHelper;->resolveActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    instance-of p2, p1, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;

    new-instance v0, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$K7lft0lbYxYv1XYt4OjLQAAUcDg;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$K7lft0lbYxYv1XYt4OjLQAAUcDg;-><init>(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    invoke-interface {p2, v0}, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;->setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;)V

    :cond_0
    return-object p1
.end method

.method public instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object p0

    instance-of p1, p0, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;

    new-instance p2, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$pPiiW5zNbVk8McZrLK2oqhHWM0g;

    invoke-direct {p2, p0}, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$pPiiW5zNbVk8McZrLK2oqhHWM0g;-><init>(Landroid/content/ContentProvider;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/SystemUIAppComponentFactory$ContextInitializer;->setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;)V

    :cond_0
    return-object p0
.end method

.method public instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-interface {v0, p2}, Lcom/android/systemui/dagger/ContextComponentHelper;->resolveBroadcastReceiver(Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    return-object p0
.end method

.method public instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-interface {v0, p2}, Lcom/android/systemui/dagger/ContextComponentHelper;->resolveService(Ljava/lang/String;)Landroid/app/Service;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$instantiateApplicationCompat$0$SystemUIAppComponentFactory(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactory;->lambda$instantiateApplicationCompat$0(Landroid/content/Context;)V

    return-void
.end method
