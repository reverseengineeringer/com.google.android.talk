.class public final Lewu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lewt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbhi;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewu;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lbhj;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewu;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 5

    .prologue
    .line 19
    sget-object v0, Lewu;->c:Lewt;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lewt;

    invoke-direct {v0}, Lewt;-><init>()V

    sput-object v0, Lewu;->c:Lewt;

    .line 22
    :cond_0
    const-class v1, Lbhi;

    .line 1019
    const/4 v0, 0x1

    new-array v2, v0, [Lbhi;

    const/4 v3, 0x0

    new-instance v4, Lewr;

    const-class v0, Lawo;

    .line 1020
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    invoke-direct {v4, v0}, Lewr;-><init>(Lawo;)V

    aput-object v4, v2, v3

    .line 22
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 5

    .prologue
    .line 27
    sget-object v0, Lewu;->c:Lewt;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lewt;

    invoke-direct {v0}, Lewt;-><init>()V

    sput-object v0, Lewu;->c:Lewt;

    .line 30
    :cond_0
    const-class v1, Lbhj;

    .line 1026
    const/4 v0, 0x1

    new-array v2, v0, [Lbhj;

    const/4 v3, 0x0

    new-instance v4, Lews;

    const-class v0, Lawo;

    .line 1027
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    invoke-direct {v4, v0}, Lews;-><init>(Lawo;)V

    aput-object v4, v2, v3

    .line 30
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method
