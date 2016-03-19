.class public final Lief;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lieh;

.field f:Z

.field g:Liep;

.field h:Lidj;

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    sget-object v0, Lied;->c:Lieh;

    .line 648
    iput-object v0, p0, Lief;->e:Lieh;

    .line 650
    sget-object v0, Liep;->d:Liep;

    iput-object v0, p0, Lief;->g:Liep;

    .line 651
    sget-object v0, Lidj;->a:Lidj;

    iput-object v0, p0, Lief;->h:Lidj;

    .line 660
    const-string v0, "context must be non-null"

    invoke-static {p1, v0}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iput-object p1, p0, Lief;->a:Landroid/content/Context;

    .line 662
    return-void
.end method


# virtual methods
.method public a()Lied;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lief;->b:Ljava/lang/String;

    const-string v1, "must specify an accountName"

    invoke-static {v0, v1}, Laen;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 740
    iget-object v0, p0, Lief;->c:Ljava/lang/String;

    const-string v1, "must specify an accountGaiaId"

    invoke-static {v0, v1}, Laen;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 741
    new-instance v0, Lied;

    .line 2056
    invoke-direct {v0, p0}, Lied;-><init>(Lief;)V

    .line 741
    return-object v0
.end method

.method public a(Lieh;)Lief;
    .locals 1

    .prologue
    .line 699
    const-string v0, "progressListener must be non-null"

    invoke-static {p1, v0}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iput-object p1, p0, Lief;->e:Lieh;

    .line 701
    return-object p0
.end method

.method public a(Liep;)Lief;
    .locals 1

    .prologue
    .line 717
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liep;

    iput-object v0, p0, Lief;->g:Liep;

    .line 718
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lief;
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lief;->b:Ljava/lang/String;

    .line 679
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lief;
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lief;->c:Ljava/lang/String;

    .line 688
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lief;
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lief;->d:Ljava/lang/String;

    .line 694
    return-object p0
.end method
