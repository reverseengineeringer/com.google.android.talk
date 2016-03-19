.class final Lcle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclb;


# instance fields
.field final synthetic a:Lcld;


# direct methods
.method constructor <init>(Lcld;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcle;->a:Lcld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Liog;)Lcla;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lclc;

    invoke-direct {v0, p1, p2}, Lclc;-><init>(Landroid/content/Context;Liog;)V

    return-object v0
.end method
