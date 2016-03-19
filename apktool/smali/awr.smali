.class public final Lawr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lawq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lawo;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lawr;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lawm;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lawr;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lawr;->c:Lawq;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lawq;

    invoke-direct {v0}, Lawq;-><init>()V

    sput-object v0, Lawr;->c:Lawq;

    .line 22
    :cond_0
    const-class v0, Lawo;

    .line 1017
    new-instance v1, Lawu;

    invoke-direct {v1, p0}, Lawu;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lawr;->c:Lawq;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lawq;

    invoke-direct {v0}, Lawq;-><init>()V

    sput-object v0, Lawr;->c:Lawq;

    .line 30
    :cond_0
    const-class v0, Lawm;

    .line 1022
    new-instance v1, Laws;

    invoke-direct {v1, p0}, Laws;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method
