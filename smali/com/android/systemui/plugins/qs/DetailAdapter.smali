.class public interface abstract Lcom/android/systemui/plugins/qs/DetailAdapter;
.super Ljava/lang/Object;
.source "DetailAdapter.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final INVALID:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/android/systemui/plugins/qs/-$$Lambda$DetailAdapter$MIOR0XPfHL3Q0lRMWDu_BAc5K4g;->INSTANCE:Lcom/android/systemui/plugins/qs/-$$Lambda$DetailAdapter$MIOR0XPfHL3Q0lRMWDu_BAc5K4g;

    sput-object v0, Lcom/android/systemui/plugins/qs/DetailAdapter;->INVALID:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    return-void
.end method

.method public static synthetic lambda$static$0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public closeDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    .line 54
    sget-object p0, Lcom/android/systemui/plugins/qs/DetailAdapter;->INVALID:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    return-object p0
.end method

.method public abstract createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public abstract getSettingsIntent()Landroid/content/Intent;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getToggleEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getToggleState()Ljava/lang/Boolean;
.end method

.method public hasHeader()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public moreSettingsEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    .line 58
    sget-object p0, Lcom/android/systemui/plugins/qs/DetailAdapter;->INVALID:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    return-object p0
.end method

.method public openDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    .line 50
    sget-object p0, Lcom/android/systemui/plugins/qs/DetailAdapter;->INVALID:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    return-object p0
.end method

.method public abstract setToggleState(Z)V
.end method
