.class public Ldpn;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2514
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Ldpn;->a:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2519
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 2520
    iput-object p1, p0, Ldpn;->c:Ljava/lang/String;

    .line 2521
    iput-object p2, p0, Ldpn;->b:Ljava/lang/String;

    .line 2522
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2548
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    .line 2527
    new-instance v6, Lkdt;

    invoke-direct {v6}, Lkdt;-><init>()V

    .line 2528
    iget-object v0, p0, Ldpn;->c:Ljava/lang/String;

    iput-object v0, v6, Lkdt;->a:Ljava/lang/String;

    .line 2529
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lkdt;->b:Ljava/lang/Integer;

    .line 2530
    sget-object v0, Ldpn;->a:[I

    iput-object v0, v6, Lkdt;->f:[I

    .line 2531
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Ldpn;->h:Lfak;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ldon;->a(Ljxk;ZLjava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v6, Lkdt;->requestHeader:Lkdo;

    .line 2533
    return-object v6
.end method

.method public a(Lcwi;)Z
    .locals 2

    .prologue
    .line 2554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2555
    check-cast p1, Ldpn;

    .line 2556
    iget-object v0, p1, Ldpn;->b:Ljava/lang/String;

    iget-object v1, p0, Ldpn;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 2538
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2543
    const-string v0, "contacts/searchentities"

    return-object v0
.end method
