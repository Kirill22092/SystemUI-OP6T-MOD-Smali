.class public Lcom/android/systemui/SystemUIFactory$ContextHolder;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextHolder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory$ContextHolder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public provideContext()Landroid/content/Context;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory$ContextHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method
