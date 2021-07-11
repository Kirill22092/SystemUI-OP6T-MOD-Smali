.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$FeatureFlags$quCg0PddUt747ILcyW36A9ZoNcM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/FeatureFlags;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$FeatureFlags$quCg0PddUt747ILcyW36A9ZoNcM;->f$0:Lcom/android/systemui/statusbar/FeatureFlags;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$FeatureFlags$quCg0PddUt747ILcyW36A9ZoNcM;->f$0:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/FeatureFlags;->lambda$quCg0PddUt747ILcyW36A9ZoNcM(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
