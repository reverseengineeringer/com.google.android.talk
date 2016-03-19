.class final Lffq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lffi;


# instance fields
.field final synthetic a:Lffp;


# direct methods
.method constructor <init>(Lffp;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lffq;->a:Lffp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lffe;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lffe;

    invoke-direct {v0, p1}, Lffe;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
