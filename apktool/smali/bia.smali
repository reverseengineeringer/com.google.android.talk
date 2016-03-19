.class public final Lbia;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lbng;


# direct methods
.method public constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 5732
    iput-object p1, p0, Lbia;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/hangouts/views/MessageListItemView;)V
    .locals 1

    .prologue
    .line 4735
    iget-object v0, p0, Lbia;->a:Lbng;

    iget-object v0, v0, Lbng;->bk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4736
    return-void
.end method
