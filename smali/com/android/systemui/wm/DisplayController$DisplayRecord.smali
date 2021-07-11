.class Lcom/android/systemui/wm/DisplayController$DisplayRecord;
.super Ljava/lang/Object;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayRecord"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wm/DisplayController$1;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/wm/DisplayController$DisplayRecord;-><init>()V

    return-void
.end method
