.class public final Lfho;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:Lfho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lfhr;->a:I

    sput v0, Lfho;->a:I

    new-instance v0, Lfho;

    invoke-direct {v0}, Lfho;-><init>()V

    sput-object v0, Lfho;->b:Lfho;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lfhr;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lfhr;->b(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    :cond_0
    return v0
.end method

.method public static a(I)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lfhr;->a(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0, p1}, Lfhr;->b(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lfhr;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lfhr;->c(Landroid/content/Context;)V

    return-void
.end method
