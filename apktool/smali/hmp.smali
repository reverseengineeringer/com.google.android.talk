.class public final Lhmp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lhmt;

.field private b:Lhmy;

.field private c:Lhmq;

.field private d:Lhmv;

.field private e:Lhmx;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lhmt;->c:Lhmt;

    iput-object v0, p0, Lhmp;->a:Lhmt;

    .line 38
    sget-object v0, Lhmy;->c:Lhmy;

    iput-object v0, p0, Lhmp;->b:Lhmy;

    .line 39
    sget-object v0, Lhmq;->a:Lhmq;

    iput-object v0, p0, Lhmp;->c:Lhmq;

    .line 40
    sget-object v0, Lhmv;->a:Lhmv;

    iput-object v0, p0, Lhmp;->d:Lhmv;

    .line 41
    sget-object v0, Lhmx;->a:Lhmx;

    iput-object v0, p0, Lhmp;->e:Lhmx;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lhmo;
    .locals 6

    .prologue
    .line 71
    new-instance v0, Lhmo;

    iget-object v1, p0, Lhmp;->a:Lhmt;

    iget-object v2, p0, Lhmp;->b:Lhmy;

    iget-object v3, p0, Lhmp;->c:Lhmq;

    iget-object v4, p0, Lhmp;->d:Lhmv;

    iget-object v5, p0, Lhmp;->e:Lhmx;

    .line 1007
    invoke-direct/range {v0 .. v5}, Lhmo;-><init>(Lhmt;Lhmy;Lhmq;Lhmv;Lhmx;)V

    .line 71
    return-object v0
.end method

.method public a(Lhmq;)Lhmp;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lhmp;->c:Lhmq;

    .line 57
    return-object p0
.end method

.method public a(Lhmt;)Lhmp;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lhmp;->a:Lhmt;

    .line 47
    return-object p0
.end method

.method public a(Lhmv;)Lhmp;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lhmp;->d:Lhmv;

    .line 62
    return-object p0
.end method

.method public a(Lhmx;)Lhmp;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lhmp;->e:Lhmx;

    .line 67
    return-object p0
.end method

.method public a(Lhmy;)Lhmp;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lhmp;->b:Lhmy;

    .line 52
    return-object p0
.end method
