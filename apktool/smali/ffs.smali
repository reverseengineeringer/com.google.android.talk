.class public final Lffs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lffp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lffn;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lffs;->a:Ljava/lang/String;

    .line 12
    const-class v0, Lffi;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lffs;->b:Ljava/lang/String;

    .line 14
    const-class v0, Lbcr;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lffs;->c:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lffs;->d:Lffp;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lffp;

    invoke-direct {v0}, Lffp;-><init>()V

    sput-object v0, Lffs;->d:Lffp;

    .line 23
    :cond_0
    const-class v0, Lffn;

    sget-object v1, Lffs;->d:Lffp;

    .line 24
    invoke-virtual {v1}, Lffp;->b()Lffn;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 25
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lffs;->d:Lffp;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lffp;

    invoke-direct {v0}, Lffp;-><init>()V

    sput-object v0, Lffs;->d:Lffp;

    .line 31
    :cond_0
    const-class v0, Lffi;

    sget-object v1, Lffs;->d:Lffp;

    .line 32
    invoke-virtual {v1}, Lffp;->a()Lffi;

    move-result-object v1

    .line 31
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 33
    return-void
.end method

.method public static c(Lilh;)V
    .locals 5

    .prologue
    .line 36
    sget-object v0, Lffs;->d:Lffp;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lffp;

    invoke-direct {v0}, Lffp;-><init>()V

    sput-object v0, Lffs;->d:Lffp;

    .line 39
    :cond_0
    const-class v0, Lbcr;

    .line 1038
    const/4 v1, 0x4

    new-array v1, v1, [Lbcr;

    const/4 v2, 0x0

    new-instance v3, Lbcr;

    const-class v4, Lfev;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lbcr;

    const-class v4, Lfey;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lbcr;

    const-class v4, Lffa;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lbcr;

    const-class v4, Lffc;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    .line 39
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 41
    return-void
.end method
