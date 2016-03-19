.class public final Lhmo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lhmt;

.field final b:Lhmy;

.field final c:Lhmq;

.field final d:Lhmv;

.field final e:Lhmx;


# direct methods
.method constructor <init>(Lhmt;Lhmy;Lhmq;Lhmv;Lhmx;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lhmo;->a:Lhmt;

    .line 22
    iput-object p2, p0, Lhmo;->b:Lhmy;

    .line 23
    iput-object p3, p0, Lhmo;->c:Lhmq;

    .line 24
    iput-object p4, p0, Lhmo;->d:Lhmv;

    .line 25
    iput-object p5, p0, Lhmo;->e:Lhmx;

    .line 26
    return-void
.end method

.method public static newBuilder()Lhmp;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lhmp;

    .line 1035
    invoke-direct {v0}, Lhmp;-><init>()V

    .line 29
    return-object v0
.end method
