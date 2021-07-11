.class public Lcom/android/systemui/tv/TvSystemUIFactory;
.super Lcom/android/systemui/SystemUIFactory;
.source "TvSystemUIFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/SystemUIFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildSystemUIRootComponent(Landroid/content/Context;)Lcom/android/systemui/dagger/SystemUIRootComponent;
    .locals 0

    .line 31
    invoke-static {}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builder()Lcom/android/systemui/tv/TvSystemUIRootComponent$Builder;

    move-result-object p0

    .line 32
    invoke-interface {p0, p1}, Lcom/android/systemui/tv/TvSystemUIRootComponent$Builder;->context(Landroid/content/Context;)Lcom/android/systemui/tv/TvSystemUIRootComponent$Builder;

    .line 33
    invoke-interface {p0}, Lcom/android/systemui/tv/TvSystemUIRootComponent$Builder;->build()Lcom/android/systemui/tv/TvSystemUIRootComponent;

    move-result-object p0

    return-object p0
.end method
