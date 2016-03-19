.class final Lffp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lffi;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lffq;

    invoke-direct {v0, p0}, Lffq;-><init>(Lffp;)V

    return-object v0
.end method

.method b()Lffn;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lffr;

    invoke-direct {v0, p0}, Lffr;-><init>(Lffp;)V

    return-object v0
.end method
