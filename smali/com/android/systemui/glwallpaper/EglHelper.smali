.class public Lcom/android/systemui/glwallpaper/EglHelper;
.super Ljava/lang/Object;
.source "EglHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EglHelper"


# instance fields
.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglReady:Z

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mEglVersion:[I

.field private final mExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglVersion:[I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mExts:Ljava/util/Set;

    return-void
.end method

.method private chooseEglConfig()Landroid/opengl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    new-array v9, v0, [I

    new-array v0, v0, [Landroid/opengl/EGLConfig;

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->getConfig()[I

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, v0

    move-object v7, v9

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 p0, 0x0

    aget v2, v9, p0

    if-gtz v2, :cond_1

    sget-object v0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglChooseConfig failed, invalid configs count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v9, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    aget-object p0, v0, p0

    return-object p0
.end method

.method private connectDisplay()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mExts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/16 v1, 0x3055

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mExts:Ljava/util/Set;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private getConfig()[I
    .locals 0

    const/16 p0, 0x11

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3027
        0x3038
        0x3038
    .end array-data
.end method


# virtual methods
.method askCreatingEglWindowSurface(Landroid/view/SurfaceHolder;[II)Landroid/opengl/EGLSurface;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v0, p0, p1, p2, p3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method checkExtensionCapability(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mExts:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public createEglContext()Z
    .locals 6

    sget-object v0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string v1, "createEglContext start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3098

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const-string v4, "EGL_IMG_context_priority"

    invoke-virtual {p0, v4}, Lcom/android/systemui/glwallpaper/EglHelper;->checkExtensionCapability(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    const/16 v5, 0x3100

    aput v5, v0, v3

    const/4 v3, 0x4

    const/16 v5, 0x3103

    aput v5, v0, v4

    :cond_0
    const/16 v4, 0x3038

    aput v4, v0, v3

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateContext failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string v0, "createEglContext done"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string v0, "mEglDisplay is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public createEglSurface(Landroid/view/SurfaceHolder;Z)Z
    .locals 4

    sget-object v0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string v1, "createEglSurface start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->getWcgCapability()I

    move-result v2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const-string p2, "EGL_KHR_gl_colorspace"

    invoke-virtual {p0, p2}, Lcom/android/systemui/glwallpaper/EglHelper;->checkExtensionCapability(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-lez v2, :cond_0

    const/4 p2, 0x3

    new-array v0, p2, [I

    const/16 p2, 0x309d

    aput p2, v0, v1

    aput v2, v0, v3

    const/4 p2, 0x2

    const/16 v2, 0x3038

    aput v2, v0, p2

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/glwallpaper/EglHelper;->askCreatingEglWindowSurface(Landroid/view/SurfaceHolder;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createWindowSurface failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, p2, p2, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglMakeCurrent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "createEglSurface done"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    sget-object p2, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create EglSurface failed: hasEglDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", has valid surface="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public destroyEglContext()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    :cond_0
    return-void
.end method

.method public destroyEglSurface()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglVersion:[I

    const/4 v0, 0x0

    aget p4, p4, v0

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglVersion:[I

    const/4 v1, 0x1

    aget p4, p4, v1

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "EGL version="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "EGL ready="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglReady:Z

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "has EglContext="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "has EglSurface="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->getConfig()[I

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x7b

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length p4, p0

    :goto_0
    if-ge v0, p4, :cond_0

    aget v2, p0, v0

    const-string v3, "0x"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    const/16 p4, 0x7d

    invoke-virtual {p2, p0, p4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "EglConfig="

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglContext()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->terminateEglDisplay()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglReady:Z

    return-void
.end method

.method getWcgCapability()I
    .locals 1

    const-string v0, "EGL_EXT_gl_colorspace_display_p3_passthrough"

    invoke-virtual {p0, v0}, Lcom/android/systemui/glwallpaper/EglHelper;->checkExtensionCapability(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3490

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasEglContext()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz p0, :cond_0

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasEglDisplay()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz p0, :cond_0

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasEglSurface()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz p0, :cond_0

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public init(Landroid/view/SurfaceHolder;Z)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->connectDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "Can not connect display, abort!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglVersion:[I

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglInitialize failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->chooseEglConfig()Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_2

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "eglConfig not initialized!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglContext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t create EGLContext!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglSurface(Landroid/view/SurfaceHolder;Z)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t create EGLSurface!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglReady:Z

    return v3
.end method

.method public swapBuffer()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSwapBuffers failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method terminateEglDisplay()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    return-void
.end method
