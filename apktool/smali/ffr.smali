.class final Lffr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lffn;


# instance fields
.field final synthetic a:Lffp;


# direct methods
.method constructor <init>(Lffp;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lffr;->a:Lffp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lffl;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lffl;

    invoke-direct {v0, p1}, Lffl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
