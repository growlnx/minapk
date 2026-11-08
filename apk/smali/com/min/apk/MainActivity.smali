.class public Lcom/min/apk/MainActivity;
.super Landroid/app/Activity;

.method static constructor <clinit>()V
    .locals 2
    const-string v0, "MinAPK: .MainActivity"
    const-string v1, "Class loaded"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String; Ljava/lang/String;)I
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method
