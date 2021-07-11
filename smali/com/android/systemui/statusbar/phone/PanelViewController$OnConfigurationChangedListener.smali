.class public Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnConfigurationChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 1692
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->loadDimens()V

    .line 1699
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 1700
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOrientation:I

    :cond_0
    return-void
.end method
